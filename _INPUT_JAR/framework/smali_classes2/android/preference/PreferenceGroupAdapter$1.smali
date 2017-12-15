.class Landroid/preference/PreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceGroupAdapter;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter$1;->this$0:Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter$1;->this$0:Landroid/preference/PreferenceGroupAdapter;

    # invokes: Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V
    invoke-static {v0}, Landroid/preference/PreferenceGroupAdapter;->access$100(Landroid/preference/PreferenceGroupAdapter;)V

    .line 101
    return-void
.end method
