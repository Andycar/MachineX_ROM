.class public Landroid/hardware/camera2/utils/CameraRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CameraRuntimeException.java"


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mMessage:Ljava/lang/String;

.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "problem"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 20
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    .line 26
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    .line 32
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3
    .param p1, "problem"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    .line 39
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    .line 40
    return-void
.end method


# virtual methods
.method public asChecked()Landroid/hardware/camera2/CameraAccessException;
    .registers 5

    .prologue
    .line 49
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_1b

    .line 50
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_13
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraAccessException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 61
    return-object v0

    .line 51
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1b
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 52
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_13

    .line 53
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_29
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_37

    .line 54
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/Throwable;)V

    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_13

    .line 56
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_37
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_13
.end method

.method public final getReason()I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    return v0
.end method
