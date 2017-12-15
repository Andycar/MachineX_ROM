.class public final Lcom/samsung/android/mdnie/MdnieManager;
.super Ljava/lang/Object;
.source "MdnieManager.java"


# static fields
.field public static final MDNIE_CONTENT_MODE_BROWSER:I = 0x5

.field public static final MDNIE_CONTENT_MODE_CAMERA:I = 0x2

.field public static final MDNIE_CONTENT_MODE_EBOOK:I = 0x6

.field public static final MDNIE_CONTENT_MODE_EMAIL:I = 0x7

.field public static final MDNIE_CONTENT_MODE_GALLERY:I = 0x3

.field public static final MDNIE_CONTENT_MODE_HMT16:I = 0x9

.field public static final MDNIE_CONTENT_MODE_HMT8:I = 0x8

.field public static final MDNIE_CONTENT_MODE_UI:I = 0x0

.field public static final MDNIE_CONTENT_MODE_VIDEO:I = 0x1

.field public static final MDNIE_CONTENT_MODE_VT:I = 0x4

.field public static final MDNIE_SCREEN_ADAPTIVE_MODE:I = 0x4

.field public static final MDNIE_SCREEN_ADOBERGB_MODE:I = 0x2

.field public static final MDNIE_SCREEN_AMOLED_MODE:I = 0x1

.field public static final MDNIE_SCREEN_AMOLED_S_CURVE_MODE:I = 0x0

.field public static final MDNIE_SCREEN_SRGB_MODE:I = 0x3

.field public static final MDNIE_VISION_COLOR_BLIND:I = 0x3

.field public static final MDNIE_VISION_GREY_SCALE:I = 0x4

.field public static final MDNIE_VISION_LOCAL_CE:I = 0x5

.field public static final MDNIE_VISION_LOCAL_CE_TEXT:I = 0x6

.field public static final MDNIE_VISION_NEGATIVE:I = 0x1

.field public static final MDNIE_VISION_NORMAL:I = 0x0

.field public static final MDNIE_VISION_SCREEN_CURTAIN:I = 0x2

.field private static RETURN_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MdnieManager"


# instance fields
.field final mService:Lcom/samsung/android/mdnie/IMdnieManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdnie/IMdnieManager;)V
    .registers 4
    .param p1, "service"    # Lcom/samsung/android/mdnie/IMdnieManager;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_c

    .line 60
    const-string v0, "MdnieManager"

    const-string v1, "In Constructor Stub-Service(IMdnieManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_c
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    .line 64
    return-void
.end method


# virtual methods
.method public getContentMode()I
    .registers 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v1, :cond_7

    .line 92
    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    .line 98
    :goto_6
    return v1

    .line 96
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/mdnie/IMdnieManager;->getContentMode()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 97
    :catch_e
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    goto :goto_6
.end method

.method public getScreenMode()I
    .registers 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v1, :cond_7

    .line 80
    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    .line 86
    :goto_6
    return v1

    .line 84
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/mdnie/IMdnieManager;->getScreenMode()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 85
    :catch_e
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    goto :goto_6
.end method

.method public getVisionMode()I
    .registers 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v1, :cond_7

    .line 68
    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    .line 74
    :goto_6
    return v1

    .line 72
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/mdnie/IMdnieManager;->getVisionMode()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 73
    :catch_e
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/mdnie/MdnieManager;->RETURN_ERROR:I

    goto :goto_6
.end method

.method public setContentMode(I)Z
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 146
    :goto_5
    return v1

    .line 144
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setContentMode(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 145
    :catch_d
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setScreenMode(I)Z
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 134
    :goto_5
    return v1

    .line 132
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setScreenMode(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 133
    :catch_d
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setVisionMode(I)Z
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 110
    :goto_5
    return v1

    .line 108
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setVisionMode(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 109
    :catch_d
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setVisionMode(I[I)Z
    .registers 6
    .param p1, "mode"    # I
    .param p2, "data"    # [I

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 122
    :goto_5
    return v1

    .line 120
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManager;->mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/mdnie/IMdnieManager;->setAdjustVisionMode(I[I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 121
    :catch_d
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method
