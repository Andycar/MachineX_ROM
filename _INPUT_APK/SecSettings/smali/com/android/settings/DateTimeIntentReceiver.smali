.class public Lcom/android/settings/DateTimeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
    }
.end annotation


# static fields
.field private static dialog_state:Z

.field private static mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;


# instance fields
.field private autoDateTime:Landroid/widget/CheckBox;

.field private autoDateTimeLayout:Landroid/widget/LinearLayout;

.field private autoTimezone:Landroid/widget/CheckBox;

.field private autoTimezoneLayout:Landroid/widget/LinearLayout;

.field private close_button:Landroid/widget/Button;

.field private datetime:Landroid/widget/TextView;

.field private resources:Landroid/content/res/Resources;

.field private setup_button:Landroid/widget/Button;

.field private timeFormat:Landroid/widget/CheckBox;

.field private timeFormatLayout:Landroid/widget/LinearLayout;

.field private timeformat:Landroid/widget/TextView;

.field private timezone:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    .prologue
    .line 59
    sput-object p0, Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/CheckBox;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/CheckBox;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/CheckBox;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;

    return-object p1
.end method

.method private displayDialog(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-string v2, "DateTimeIntentReceiver"

    const-string v3, "displayDialog()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    .line 89
    new-instance v2, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;-><init>(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "windowType":I
    :try_start_0
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "TYPE_STATUS_BAR_OVERLAY"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 103
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {v2}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setType(I)V

    .line 113
    sget-object v2, Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {v2}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->show()V

    .line 115
    return-void

    .line 109
    :catch_0
    move-exception v2

    goto :goto_0

    .line 108
    :catch_1
    move-exception v2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v2

    goto :goto_0

    .line 106
    :catch_3
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SHOW_DATE_TIME_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "DateTimeIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHOW_DATE_TIME_DIALOG is received, dialog_state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-boolean v1, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    if-nez v1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeIntentReceiver;->displayDialog(Landroid/content/Context;)V

    .line 83
    :cond_0
    return-void
.end method
