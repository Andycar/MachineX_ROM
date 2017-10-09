.class public Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
.super Landroid/app/Dialog;
.source "DateTimeIntentReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/settings/DateTimeIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    .line 121
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    .line 306
    new-instance v6, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;-><init>(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)V

    iput-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object p2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    .line 123
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->requestWindowFeature(I)Z

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x200

    const/16 v8, 0x200

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setFlags(II)V

    .line 131
    const-string v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "deviceType":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "tablet"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 135
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, -0x5

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 145
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setCanceledOnTouchOutside(Z)V

    .line 146
    const v6, 0x7f04007c

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setContentView(I)V

    .line 147
    invoke-virtual {p0, p3}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    const v6, 0x7f100149

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    .line 150
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v6, 0x7f10013b

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    .line 152
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v6, 0x7f100140

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$202(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 154
    const v6, 0x7f10013e

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$302(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 155
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v6, 0x7f100144

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$402(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 157
    const v6, 0x7f100141

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$502(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 158
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v6, 0x7f100148

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$602(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 160
    const v6, 0x7f100145

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$702(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 161
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$802(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 165
    const v6, 0x7f10013c

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$902(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 166
    const v6, 0x7f10013d

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$1002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 167
    const v6, 0x7f100147

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$1102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "autoTimeEnabled":Z
    const/4 v2, 0x0

    .line 172
    .local v2, "autoTimeZoneEnabled":Z
    invoke-static {p2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f0a01f4

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 174
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    :goto_1
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->is24Hour()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->registerTimeBroadcast()V

    .line 197
    return-void

    .line 139
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "autoTimeEnabled":Z
    .end local v2    # "autoTimeZoneEnabled":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 141
    .restart local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, -0x23

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 177
    .restart local v1    # "autoTimeEnabled":Z
    .restart local v2    # "autoTimeZoneEnabled":Z
    :cond_1
    const-string v6, "auto_time"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 178
    const-string v6, "auto_time_zone"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 188
    :catch_0
    move-exception v5

    .line 189
    .local v5, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "DateTimeIntentReceiver"

    const-string v7, "there is no AUTO_TIME_ZONE value on settinbs db so remove automatic timezone layout"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const v6, 0x7f100141

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 191
    .local v4, "layout":Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic access$1400(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private formatOffset(I)[C
    .locals 6
    .param p1, "off"    # I

    .prologue
    const/4 v5, 0x3

    .line 399
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 401
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 402
    .local v0, "buf":[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 403
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 404
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 406
    if-gez p1, :cond_0

    .line 407
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 408
    neg-int p1, p1

    .line 413
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 414
    .local v1, "hours":I
    rem-int/lit8 v2, p1, 0x3c

    .line 416
    .local v2, "minutes":I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 417
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 419
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 421
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 422
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 424
    return-object v0

    .line 410
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 278
    :cond_0
    :goto_0
    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private registerTimeBroadcast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 304
    return-void
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 272
    return-void

    .line 269
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 284
    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dismiss()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 291
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver;->access$1302(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    .line 292
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 293
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dismiss : mIntentReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v3}, Lcom/android/settings/DateTimeIntentReceiver;->access$800(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 369
    .local v2, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 370
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 371
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 372
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 373
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 378
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 379
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 380
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 389
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 395
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p1

    .line 376
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 390
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 391
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 384
    .end local v1    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 385
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 392
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 393
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 387
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 7
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 350
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 351
    .local v2, "daylight":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 353
    .local v0, "date":J
    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->formatOffset(I)[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const/4 v5, 0x1

    invoke-virtual {p1, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "mTimeZoneDisplayName":Ljava/lang/String;
    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 357
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 359
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 203
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_1

    .line 204
    const-string v6, "DateTimeIntentReceiver"

    const-string v8, "close button is clicked"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 209
    const-string v6, "DateTimeIntentReceiver"

    const-string v8, "manual setup button is clicked"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v3, "i":Landroid/content/Intent;
    const-string v6, "android.settings.DATE_SETTINGS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const v6, 0x10008000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 217
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 219
    .local v4, "mStatusBar":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 226
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "DateTimeIntentReceiver"

    const-string v7, "exception on doing dismissKeyguardOnNextActivity()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 236
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_5

    .line 237
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v6

    .line 238
    .local v1, "autoEnabled":Z
    :goto_2
    const-string v8, "DateTimeIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoDateTime is clicked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v1, :cond_4

    :goto_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 242
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1    # "autoEnabled":Z
    :cond_3
    move v1, v7

    .line 237
    goto :goto_2

    .restart local v1    # "autoEnabled":Z
    :cond_4
    move v6, v7

    .line 240
    goto :goto_3

    .line 244
    .end local v1    # "autoEnabled":Z
    :cond_5
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_8

    .line 245
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_6

    move v1, v6

    .line 246
    .restart local v1    # "autoEnabled":Z
    :goto_4
    const-string v8, "DateTimeIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoTimezone is clicked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_7

    :goto_5
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1    # "autoEnabled":Z
    :cond_6
    move v1, v7

    .line 245
    goto :goto_4

    .restart local v1    # "autoEnabled":Z
    :cond_7
    move v6, v7

    .line 248
    goto :goto_5

    .line 252
    .end local v1    # "autoEnabled":Z
    :cond_8
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_0

    .line 253
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_9

    move v0, v6

    .line 254
    .local v0, "Enabled":Z
    :goto_6
    const-string v6, "DateTimeIntentReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "24 hour format is clicked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->set24Hour(Z)V

    .line 256
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 257
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 259
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v5, "timeChanged":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0    # "Enabled":Z
    .end local v5    # "timeChanged":Landroid/content/Intent;
    :cond_9
    move v0, v7

    .line 253
    goto :goto_6
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 429
    packed-switch p1, :pswitch_data_0

    .line 435
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 431
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 318
    .local v3, "shortDateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 320
    .local v2, "now":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "time":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "date":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$900(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 326
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0a020e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 330
    :goto_0
    const-string v5, "DateTimeIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay(), date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timezone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 333
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 347
    :goto_1
    return-void

    .line 328
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0a020d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "deviceType":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "tablet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 340
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const v6, -0xbfbfc0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 343
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method
