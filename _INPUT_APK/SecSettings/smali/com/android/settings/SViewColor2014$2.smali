.class Lcom/android/settings/SViewColor2014$2;
.super Ljava/lang/Object;
.source "SViewColor2014.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor2014;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings/SViewColor2014$2;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$2;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v0}, Lcom/android/settings/SViewColor2014;->finish()V

    .line 238
    return-void
.end method
