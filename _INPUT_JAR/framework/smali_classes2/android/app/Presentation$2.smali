.class Landroid/app/Presentation$2;
.super Ljava/lang/Object;
.source "Presentation.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Presentation;


# direct methods
.method constructor <init>(Landroid/app/Presentation;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 340
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 351
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    # getter for: Landroid/app/Presentation;->mDisplay:Landroid/view/Display;
    invoke-static {v0}, Landroid/app/Presentation;->access$000(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 352
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    # invokes: Landroid/app/Presentation;->handleDisplayChanged()V
    invoke-static {v0}, Landroid/app/Presentation;->access$200(Landroid/app/Presentation;)V

    .line 354
    :cond_11
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 344
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    # getter for: Landroid/app/Presentation;->mDisplay:Landroid/view/Display;
    invoke-static {v0}, Landroid/app/Presentation;->access$000(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 345
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    # invokes: Landroid/app/Presentation;->handleDisplayRemoved()V
    invoke-static {v0}, Landroid/app/Presentation;->access$100(Landroid/app/Presentation;)V

    .line 347
    :cond_11
    return-void
.end method
