# typed: false
# frozen_string_literal: true

class KubectlInventory < Formula
  desc "Complete Kubernetes namespace inventory with orphan and stuck finalizer detection"
  homepage "https://github.com/shahneil76/kubectl-inventory"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.1.0/kubectl-inventory_0.1.0_darwin_arm64.tar.gz"
      sha256 "9f9f824b85ddb8e565b4590e7ee6acf0f3508149ec62f60723b52e555705c0aa"
    end
    on_intel do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.1.0/kubectl-inventory_0.1.0_darwin_amd64.tar.gz"
      sha256 "8dd142c31a54c1b183a81ad081b639d8f250e17e7c733b1f1565d5b450aac810"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.1.0/kubectl-inventory_0.1.0_linux_arm64.tar.gz"
      sha256 "0c882dd94b2ee0c9052917cf7e72f8a8f1c309a302763695951d21aa34b486b4"
    end
    on_intel do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.1.0/kubectl-inventory_0.1.0_linux_amd64.tar.gz"
      sha256 "f5a10efa6c5865c92abb672439a5913cb96fea1e36f4e5e51a52407c1454bafb"
    end
  end

  def install
    bin.install "kubectl-inventory"
  end

  test do
    assert_match "kubectl-inventory", shell_output("#{bin}/kubectl-inventory --help 2>&1")
  end
end
