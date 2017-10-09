.class public Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;
.super Ljava/lang/Object;
.source "UniversalSwitchScreenAsSwitch.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SwitchControlScreenAsSwitch"


# instance fields
.field private SCREEN_AS_SWITCH_BROADCAST_ACTION:Ljava/lang/String;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mTapTimeout:I

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "SWITCHCONTROL_SCREEN_AS_SWITCH_CLICK_ACTION"

    iput-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->SCREEN_AS_SWITCH_BROADCAST_ACTION:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mTouchSlop:I

    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mTapTimeout:I

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 102
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 82
    return-void
.end method

.method sendBroadCast()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 55
    return-void
.end method
