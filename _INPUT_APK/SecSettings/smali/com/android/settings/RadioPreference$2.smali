.class Lcom/android/settings/RadioPreference$2;
.super Ljava/lang/Object;
.source "RadioPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioPreference;

.field final synthetic val$rb:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioPreference;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/RadioPreference$2;->this$0:Lcom/android/settings/RadioPreference;

    iput-object p2, p0, Lcom/android/settings/RadioPreference$2;->val$rb:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/settings/RadioPreference$2;->this$0:Lcom/android/settings/RadioPreference;

    iget-object v0, p0, Lcom/android/settings/RadioPreference$2;->val$rb:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/RadioPreference;->access$100(Lcom/android/settings/RadioPreference;Ljava/lang/Object;)Z

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
