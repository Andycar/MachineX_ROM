.class Lcom/android/internal/widget/LockPatternUtils$2;
.super Landroid/os/AsyncTask;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$service:Landroid/os/IBinder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$2;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$service:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$type:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1211
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "dummy"    # [Ljava/lang/Void;

    .prologue
    .line 1214
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$service:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1216
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_6
    iget v2, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$type:I

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$password:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 1220
    :goto_d
    const/4 v2, 0x0

    return-object v2

    .line 1217
    :catch_f
    move-exception v0

    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "Error changing encryption password"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
