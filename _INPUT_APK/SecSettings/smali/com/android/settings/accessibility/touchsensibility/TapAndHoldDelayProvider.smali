.class public Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;
.super Ljava/lang/Object;
.source "TapAndHoldDelayProvider.java"


# direct methods
.method public static getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeOutLength"    # I

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const-string v2, "Tap and Hold Delay"

    const-string v3, "Context is null"

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "timeOutTitles":[Ljava/lang/String;
    const-string v0, ""

    .line 35
    .local v0, "returnTitle":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 50
    const-string v2, "Tap and Hold Delay"

    const-string v3, "Unkown timeout length"

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :pswitch_0
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 38
    goto :goto_0

    .line 40
    :pswitch_1
    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 41
    goto :goto_0

    .line 43
    :pswitch_2
    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 44
    goto :goto_0

    .line 46
    :pswitch_3
    const/4 v2, 0x3

    aget-object v0, v1, v2

    .line 48
    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
