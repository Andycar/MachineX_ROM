.class Landroid/content/pm/RegisteredServicesCache$3;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;

.field final synthetic val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

.field final synthetic val$removed:Z

.field final synthetic val$type:Ljava/lang/Object;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V
    .registers 6

    .prologue
    .line 234
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$3;, "Landroid/content/pm/RegisteredServicesCache.3;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$3;->this$0:Landroid/content/pm/RegisteredServicesCache;

    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache$3;->val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache$3;->val$type:Ljava/lang/Object;

    iput p4, p0, Landroid/content/pm/RegisteredServicesCache$3;->val$userId:I

    iput-boolean p5, p0, Landroid/content/pm/RegisteredServicesCache$3;->val$removed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 236
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$3;, "Landroid/content/pm/RegisteredServicesCache.3;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$3;->val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$3;->val$type:Ljava/lang/Object;

    iget v2, p0, Landroid/content/pm/RegisteredServicesCache$3;->val$userId:I

    iget-boolean v3, p0, Landroid/content/pm/RegisteredServicesCache$3;->val$removed:Z

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/RegisteredServicesCacheListener;->onServiceChanged(Ljava/lang/Object;IZ)V

    .line 237
    return-void
.end method
