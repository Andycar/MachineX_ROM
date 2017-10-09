.class Lcom/android/settings/accounts/AccountSettings$3;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/accounts/AccountSettings$AccountPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$3;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/accounts/AccountSettings$AccountPreference;Lcom/android/settings/accounts/AccountSettings$AccountPreference;)I
    .locals 2
    .param p1, "t1"    # Lcom/android/settings/accounts/AccountSettings$AccountPreference;
    .param p2, "t2"    # Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    .prologue
    .line 600
    invoke-static {p1}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->access$400(Lcom/android/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->access$400(Lcom/android/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 597
    check-cast p1, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accounts/AccountSettings$3;->compare(Lcom/android/settings/accounts/AccountSettings$AccountPreference;Lcom/android/settings/accounts/AccountSettings$AccountPreference;)I

    move-result v0

    return v0
.end method
