.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockSingleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clockfont"    # Ljava/lang/String;
    .param p2, "numfont"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$402(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    .line 119
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$402(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$302(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;I)I

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    .line 110
    return-void
.end method
