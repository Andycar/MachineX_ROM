.class Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;


# direct methods
.method constructor <init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V
    .registers 2

    .prologue
    .line 1765
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter$CalendarGestureListener;->this$1:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1768
    const/4 v0, 0x1

    return v0
.end method
