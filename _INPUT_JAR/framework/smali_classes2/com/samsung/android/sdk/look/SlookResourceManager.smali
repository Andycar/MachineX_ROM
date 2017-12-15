.class public Lcom/samsung/android/sdk/look/SlookResourceManager;
.super Ljava/lang/Object;
.source "SlookResourceManager.java"


# static fields
.field public static final AIR_BUTTON_WARN_NO_CONTACT_HISTORY:I = 0x0

.field public static final AIR_BUTTON_WARN_NO_IMAGES:I = 0x1

.field public static final CLIPED_TEXT_MAX_COUNT:I = 0x5

.field public static final DRAWABLE_AUDIO:I = 0x2

.field public static final DRAWABLE_CONTACT:I = 0x1

.field public static final FREQUENT_CONTACT_MAX_COUNT:I = 0x2

.field public static final RECENT_MEDIA_MAX_COUNT:I = 0x3

.field public static final RECENT_SNOTE_MAX_COUNT:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableId(I)I
    .registers 4
    .param p0, "id"    # I

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_2a

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was wrong."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_22
    const v0, 0x10800d1

    .line 103
    :goto_25
    return v0

    :pswitch_26
    const v0, 0x10800d0

    goto :goto_25

    .line 93
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_26
    .end packed-switch
.end method

.method public static getInt(I)I
    .registers 4
    .param p0, "id"    # I

    .prologue
    const/16 v0, 0xf

    .line 129
    packed-switch p0, :pswitch_data_26

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was wrong."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_24
    return v0

    .line 129
    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public static getText(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_1e

    .line 181
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 173
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040784

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 177
    :pswitch_11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040785

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 169
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_11
    .end packed-switch
.end method
