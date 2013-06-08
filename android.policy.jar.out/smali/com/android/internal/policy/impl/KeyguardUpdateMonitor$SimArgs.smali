.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field simId:I

.field public final simState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 169
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 170
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 1
    .parameter "state"
    .parameter "id"

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 173
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 174
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 175
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    .locals 7
    .parameter "intent"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, id:I
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :cond_0
    const-string v5, "ss"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, stateExtra:Ljava/lang/String;
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, absentReason:Ljava/lang/String;
    const-string v5, "PERM_DISABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    .line 216
    .end local v0           #absentReason:Ljava/lang/String;
    .local v3, state:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v5, v3, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;I)V

    return-object v5

    .line 195
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 197
    .end local v0           #absentReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 199
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 200
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, lockedReason:Ljava/lang/String;
    const-string v5, "PIN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 203
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 204
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_4
    const-string v5, "PUK"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 205
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 207
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 209
    .end local v2           #lockedReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    const-string v5, "NETWORK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 210
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 211
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    const-string v5, "NOT_READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 212
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 214
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
