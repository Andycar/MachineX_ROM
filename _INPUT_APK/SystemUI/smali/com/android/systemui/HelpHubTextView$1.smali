.class Lcom/android/systemui/HelpHubTextView$1;
.super Ljava/lang/Object;
.source "HelpHubTextView.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/HelpHubTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/HelpHubTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/HelpHubTextView;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "commonDrawable":Lcom/android/systemui/HelpHubDrawable;
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v3}, Lcom/android/systemui/HelpHubTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-static {v5}, Lcom/android/systemui/HelpHubTextView;->access$000(Lcom/android/systemui/HelpHubTextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, "resID":I
    if-eqz v2, :cond_0

    .line 293
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v3}, Lcom/android/systemui/HelpHubTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 295
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Lcom/android/systemui/HelpHubDrawable;

    .end local v0    # "commonDrawable":Lcom/android/systemui/HelpHubDrawable;
    invoke-direct {v0, v1}, Lcom/android/systemui/HelpHubDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 298
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0    # "commonDrawable":Lcom/android/systemui/HelpHubDrawable;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-static {v3}, Lcom/android/systemui/HelpHubTextView;->access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-static {v3}, Lcom/android/systemui/HelpHubTextView;->access$200(Lcom/android/systemui/HelpHubTextView;)V

    .line 301
    return-object v0
.end method
