.class Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;
.super Ljava/lang/Object;
.source "GlobalActionsSViewCoverDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/GlobalActionsSViewCoverDialog$Builder;

.field final synthetic val$dialog:Landroid/app/GlobalActionsSViewCoverDialog;


# direct methods
.method constructor <init>(Landroid/app/GlobalActionsSViewCoverDialog$Builder;Landroid/app/GlobalActionsSViewCoverDialog;)V
    .registers 3

    .prologue
    .line 150
    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;->this$0:Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;->val$dialog:Landroid/app/GlobalActionsSViewCoverDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;->this$0:Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    # getter for: Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->access$200(Landroid/app/GlobalActionsSViewCoverDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;->val$dialog:Landroid/app/GlobalActionsSViewCoverDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 153
    return-void
.end method
