.class public Landroid/hardware/camera2/CameraAccessException;
.super Landroid/util/AndroidException;
.source "CameraAccessException.java"


# static fields
.field public static final CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final MAX_CAMERAS_IN_USE:I = 0x5

.field private static final serialVersionUID:J = 0x4e22fb28f3a4e7dbL


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "problem"    # I

    .prologue
    .line 98
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 99
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 104
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 105
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 110
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "problem"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 113
    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    .line 115
    return-void
.end method

.method public static getDefaultMessage(I)Ljava/lang/String;
    .registers 2
    .param p0, "problem"    # I

    .prologue
    .line 121
    packed-switch p0, :pswitch_data_14

    .line 138
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "The camera device is in use already"

    goto :goto_4

    .line 125
    :pswitch_8
    const-string v0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    goto :goto_4

    .line 129
    :pswitch_b
    const-string v0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    goto :goto_4

    .line 133
    :pswitch_e
    const-string v0, "The camera is disabled due to a device policy, and cannot be opened."

    goto :goto_4

    .line 135
    :pswitch_11
    const-string v0, "The camera device is currently in the error state; no further calls to it will succeed."

    goto :goto_4

    .line 121
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_11
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final getReason()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return v0
.end method
