class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2748.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2748.3/lightdash-cli-0.2748.3-macos-arm64.tar.gz"
      sha256 "6ed263cdafc414d2e9c82764af00ad073d6739d88442ce95f1232bda7ba63173"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2748.3/lightdash-cli-0.2748.3-macos-x64.tar.gz"
      sha256 "925a393aa7d8a8112af885c79bf70ec3a19676792c3e5542b64bf9362cbdfe6e"
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
