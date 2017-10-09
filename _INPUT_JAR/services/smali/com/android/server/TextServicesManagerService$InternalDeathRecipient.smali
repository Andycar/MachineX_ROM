.class Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDeathRecipient"
.end annotation


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field private final mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

.field public final mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field public final mScLocale:Ljava/lang/String;

.field public final mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

.field public final mUid:I

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .registers 8
    .param p2, "group"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scLocale"    # Ljava/lang/String;
    .param p5, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p6, "uid"    # I
    .param p7, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p3, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    .line 897
    iput-object p5, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 898
    iput-object p4, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    .line 899
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 900
    iput p6, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mUid:I

    .line 901
    iput-object p7, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mBundle:Landroid/os/Bundle;

    .line 902
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 911
    return-void
.end method

.method public hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z
    .registers 4
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .prologue
    .line 905
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
