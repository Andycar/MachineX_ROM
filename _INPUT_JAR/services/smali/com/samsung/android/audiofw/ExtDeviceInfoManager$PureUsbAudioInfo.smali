.class final Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
.super Ljava/lang/Object;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PureUsbAudioInfo"
.end annotation


# instance fields
.field private channels:I

.field private format:Ljava/lang/String;

.field private isPlayback:Z

.field private rates:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->this$0:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
    .param p2, "x1"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->isPlayback:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->format:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    .prologue
    .line 180
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .param p1, "x1"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->channels:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->rates:Ljava/lang/String;

    return-object p1
.end method
