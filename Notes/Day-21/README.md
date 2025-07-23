## 🔐 Terraform State Locking

Terraform uses a locking mechanism to prevent multiple operations from modifying the same remote state file at the same time.

This is critical for avoiding race conditions in CI/CD or team environments.

### 🔧 How State Locking Works

Terraform acquires a lock file (`.lock.hcl`) when you run `terraform plan` or `terraform apply`. It automatically releases the lock when the operation completes successfully.

If the process is interrupted, the lock may remain, blocking future commands.

**Diagram: Terraform Remote State and Locking**

         +------------+        +------------------+
         |  Developer | <----> |  Terraform CLI   |
         +------------+        +------------------+
                                     |
                                     v
                            +------------------+
                            |   Remote State   |  <-- S3 bucket
                            | terraform.tfstate|
                            +------------------+
                                     |
                                     v
                            +------------------+
                            |  Lock File (.lock)|
                            | use_lockfile=true |
                            +------------------+


### 🧪 When You Might See Lock Errors

- Interrupted `terraform apply` (e.g. Ctrl+C or crash)
- Two sessions apply simultaneously
- CI/CD pipeline didn't clean up properly

---

### 🚑 How to Troubleshoot & Fix Lock Errors

#### 🔍 Error Example
Error acquiring the state lock
StatusCode: 412
PreconditionFailed: At least one of the pre-conditions did not hold


#### ✅ Step-by-Step Fix

1. **Get the Lock ID from the error message:**
Lock ID: 0fa1e684-4c48-b086-d9c1-59934f22a246

2. **Run the force-unlock command:**
terraform force-unlock <LOCK_ID>
3. **Re-run your command:**
terraform apply --auto-approve
