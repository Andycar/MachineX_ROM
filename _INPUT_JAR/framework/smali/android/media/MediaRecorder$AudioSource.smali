.class public final Landroid/media/MediaRecorder$AudioSource;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSource"
.end annotation


# static fields
.field public static final AUDIO_SOURCE_INVALID:I = -0x1

.field public static final CAMCORDER:I = 0x5

.field public static final DEFAULT:I = 0x0

.field public static final FM_RX:I = 0x9

.field public static final FM_RX_A2DP:I = 0xa

.field protected static final HOTWORD:I = 0x7cf

.field public static final MIC:I = 0x1

.field public static final REMOTE_SUBMIX:I = 0x8

.field public static final SEC_2MIC_SVOICE_DRIVING:I = 0x11

.field public static final SEC_2MIC_SVOICE_NORMAL:I = 0x12

.field public static final SEC_AUDIOSOURCE_MAX:I = 0x18

.field public static final SEC_BARGEIN_DRIVING:I = 0x13

.field public static final SEC_BEAMFORMING:I = 0x15

.field public static final SEC_CAMCORDER:I = 0x14

.field public static final SEC_HIGH_GAIN_MIC:I = 0xd

.field public static final SEC_LOW_GAIN_MIC:I = 0xe

.field public static final SEC_MULTI_RECORD_FRONT:I = 0xf

.field public static final SEC_MULTI_RECORD_REAR:I = 0x10

.field public static final SEC_PLAYBACK_RECORD:I = 0x18

.field public static final SEC_VOICE_CALL_FORWARDING:I = 0x17

.field public static final SEC_VOICE_COMMUNICATION:I = 0xc

.field public static final SEC_VOICE_COMMUNICATION_NB:I = 0x16

.field public static final SEC_VOICE_RECOGNITION:I = 0xb

.field public static final VOICE_CALL:I = 0x4

.field public static final VOICE_COMMUNICATION:I = 0x7

.field public static final VOICE_DOWNLINK:I = 0x3

.field public static final VOICE_RECOGNITION:I = 0x6

.field public static final VOICE_UPLINK:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Landroid/media/MediaRecorder$AudioSource;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
