.class Lcom/android/settings/SViewStyleClock$1;
.super Ljava/lang/Object;
.source "SViewStyleClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewStyleClock;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewStyleClock;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$1;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$1;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Lcom/android/settings/SViewStyleClock;->finish()V

    .line 128
    return-void
.end method
