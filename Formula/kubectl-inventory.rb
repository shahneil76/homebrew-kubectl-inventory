# typed: false
# frozen_string_literal: true

class KubectlInventory < Formula
  desc "Complete Kubernetes namespace inventory with orphan and stuck finalizer detection"
  homepage "https://github.com/shahneil76/kubectl-inventory"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.3.0/kubectl-inventory_0.3.0_darwin_arm64.tar.gz"
      sha256 "15589168d5ca8c39c1854591ccde00776525ac1e18b11482a70b5513daf6c3b3"
    end
    on_intel do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.3.0/kubectl-inventory_0.3.0_darwin_amd64.tar.gz"
      sha256 "ce47daa986981cae2f8a5410c63c5a4de8792b2798e61a0a9865c39617ca1944"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.3.0/kubectl-inventory_0.3.0_linux_arm64.tar.gz"
      sha256 "fe131250273feabdcb19a6aa0f93bbeecc618660a1ed67e66dfcd227bacb2e9b"
    end
    on_intel do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.3.0/kubectl-inventory_0.3.0_linux_amd64.tar.gz"
      sha256 "8e2200ae55b3be175e6c7d898e4333624cf0ac5a726ec65d521edb83834b3d25"
    end
  end

  def install
    bin.install "kubectl-inventory"
  end

  test do
    assert_match "kubectl-inventory", shell_output("#{bin}/kubectl-inventory --help 2>&1")
  end
end
