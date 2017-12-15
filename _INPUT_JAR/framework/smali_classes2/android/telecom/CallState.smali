.class public final Landroid/telecom/CallState;
.super Ljava/lang/Object;
.source "CallState.java"


# static fields
.field public static final ABORTED:I = 0x8

.field public static final ACTIVE:I = 0x5

.field public static final CONNECTING:I = 0x1

.field public static final DIALING:I = 0x3

.field public static final DISCONNECTED:I = 0x7

.field public static final DISCONNECTING:I = 0x9

.field public static final NEW:I = 0x0

.field public static final ON_HOLD:I = 0x6

.field public static final PRE_DIAL_WAIT:I = 0x2

.field public static final RINGING:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "callState"    # I

    .prologue
    .line 114
    packed-switch p0, :pswitch_data_24

    .line 136
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 116
    :pswitch_6
    const-string v0, "NEW"

    goto :goto_5

    .line 118
    :pswitch_9
    const-string v0, "CONNECTING"

    goto :goto_5

    .line 120
    :pswitch_c
    const-string v0, "PRE_DIAL_WAIT"

    goto :goto_5

    .line 122
    :pswitch_f
    const-string v0, "DIALING"

    goto :goto_5

    .line 124
    :pswitch_12
    const-string v0, "RINGING"

    goto :goto_5

    .line 126
    :pswitch_15
    const-string v0, "ACTIVE"

    goto :goto_5

    .line 128
    :pswitch_18
    const-string v0, "ON_HOLD"

    goto :goto_5

    .line 130
    :pswitch_1b
    const-string v0, "DISCONNECTED"

    goto :goto_5

    .line 132
    :pswitch_1e
    const-string v0, "ABORTED"

    goto :goto_5

    .line 134
    :pswitch_21
    const-string v0, "DISCONNECTING"

    goto :goto_5

    .line 114
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method
