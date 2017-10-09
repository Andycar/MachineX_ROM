.class Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;
.super Landroid/database/ContentObserver;
.source "SViewStyleClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewStyleClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStyleClockObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;


# direct methods
.method public constructor <init>(Lcom/android/settings/SViewStyleClock;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    .line 66
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-static {v0}, Lcom/android/settings/SViewStyleClock;->access$000(Lcom/android/settings/SViewStyleClock;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SViewStyleClock;->access$002(Lcom/android/settings/SViewStyleClock;Z)Z

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Lcom/android/settings/SViewStyleClock;->getItemIndex()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Lcom/android/settings/SViewStyleClock;->setPreview()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-static {v0}, Lcom/android/settings/SViewStyleClock;->access$100(Lcom/android/settings/SViewStyleClock;)V

    goto :goto_0
.end method
