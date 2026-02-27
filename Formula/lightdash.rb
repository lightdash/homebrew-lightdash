class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2540.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2540.2/lightdash-cli-0.2540.2-macos-arm64.tar.gz"
      sha256 "8bc009a993968307281b870a00cd7c1c87decb26a3ff083eb7011ebb0fc26927"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2540.2/lightdash-cli-0.2540.2-macos-x64.tar.gz"
      sha256 "4dab13b538beedf92207ed4c3574f572d2bcd30a7e4aeb7056b5c2974b9c1a1d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
