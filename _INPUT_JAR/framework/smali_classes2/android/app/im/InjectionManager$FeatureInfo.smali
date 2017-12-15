.class Landroid/app/im/InjectionManager$FeatureInfo;
.super Ljava/lang/Object;
.source "InjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/im/InjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureInfo"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/im/InjectionManager;


# direct methods
.method constructor <init>(Landroid/app/im/InjectionManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/app/im/InjectionManager$FeatureInfo;->this$0:Landroid/app/im/InjectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", className ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
