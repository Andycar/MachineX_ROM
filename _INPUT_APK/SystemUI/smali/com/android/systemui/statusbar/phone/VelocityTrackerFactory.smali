.class public Lcom/android/systemui/statusbar/phone/VelocityTrackerFactory;
.super Ljava/lang/Object;
.source "VelocityTrackerFactory.java"


# static fields
.field public static final NOISY_IMPL:Ljava/lang/String; = "noisy"

.field public static final PLATFORM_IMPL:Ljava/lang/String; = "platform"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "tracker":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :sswitch_0
    const-string v2, "noisy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "platform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 37
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->obtain()Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;

    move-result-object v1

    .line 39
    :goto_1
    return-object v1

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->obtain()Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;

    move-result-object v1

    goto :goto_1

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0x642272e -> :sswitch_0
        0x6fbd6873 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
