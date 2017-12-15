.class public Lcom/absolute/android/logutil/a;
.super Lcom/absolute/android/logutil/LogUtil;
.source "SourceFile"


# static fields
.field private static final b:Z = false

.field private static final c:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/absolute/android/logutil/LogUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public logMessage(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_1c

    .line 47
    :goto_3
    :pswitch_3
    return-void

    .line 30
    :pswitch_4
    sget-object v0, Lcom/absolute/android/logutil/a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 39
    :pswitch_a
    sget-object v0, Lcom/absolute/android/logutil/a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 43
    :pswitch_10
    sget-object v0, Lcom/absolute/android/logutil/a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 46
    :pswitch_16
    sget-object v0, Lcom/absolute/android/logutil/a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 28
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method public start(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    return-void
.end method
