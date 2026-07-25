local PlayerMovement = {
    isFlying = false,
    flySpeed = 50,
    walkSpeed = 16,
    maxSpeed = 200
}

-- Uçuş modunu açıp kapatır
function PlayerMovement:toggleFly()
    self.isFlying = not self.isFlying
    return self.isFlying
end

-- Uçuş hızını günceller
function PlayerMovement:setFlySpeed(yeniHiz)
    if type(yeniHiz) == "number" and yeniHiz > 0 and yeniHiz <= self.maxSpeed then
        self.flySpeed = yeniHiz
    end
end

-- Yürüme / Hareket hızını günceller
function PlayerMovement:setWalkSpeed(yeniHiz)
    if type(yeniHiz) == "number" and yeniHiz > 0 and yeniHiz <= self.maxSpeed then
        self.walkSpeed = yeniHiz
    end
end

-- Kare başına çalışan durum güncellemesi
function PlayerMovement:update(deltaTime)
    if self.isFlying then
        -- Uçuş hesaplamaları (flySpeed kullanılır)
    else
        -- Normal hareket hesaplamaları (walkSpeed kullanılır)
    end
end

return PlayerMovement

