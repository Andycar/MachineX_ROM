.class Landroid/widget/SuggestionsAdapter$1;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousLength:I

.field final synthetic this$0:Landroid/widget/SuggestionsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/SuggestionsAdapter;)V
    .registers 3

    .prologue
    .line 141
    iput-object p1, p0, Landroid/widget/SuggestionsAdapter$1;->this$0:Landroid/widget/SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    return-void
.end method


# virtual methods
.method public getPostingDelay(Ljava/lang/CharSequence;)J
    .registers 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const-wide/16 v0, 0x0

    .line 146
    if-nez p1, :cond_5

    .line 150
    :goto_4
    return-wide v0

    .line 148
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    if-ge v2, v3, :cond_f

    const-wide/16 v0, 0x1f4

    .line 149
    .local v0, "delay":J
    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    goto :goto_4
.end method
