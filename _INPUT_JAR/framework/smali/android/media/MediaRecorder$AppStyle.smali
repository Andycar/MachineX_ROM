.class public final Landroid/media/MediaRecorder$AppStyle;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppStyle"
.end annotation


# static fields
.field public static final AUDIO_APP_ASR:I = 0x3

.field public static final AUDIO_APP_CAMCORDER:I = 0x2

.field public static final AUDIO_APP_DEFAULT:I = 0x0

.field public static final AUDIO_APP_VOICE_RECORDER:I = 0x1

.field public static final AUDIO_APP_VOIP_RECORDER:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .registers 2

    .prologue
    .line 1314
    iput-object p1, p0, Landroid/media/MediaRecorder$AppStyle;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
