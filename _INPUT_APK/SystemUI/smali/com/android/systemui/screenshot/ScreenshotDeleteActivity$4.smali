.class Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$4;
.super Ljava/lang/Object;
.source "ScreenshotDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->finish()V

    .line 145
    return-void
.end method
