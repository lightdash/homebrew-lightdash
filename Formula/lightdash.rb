class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2683.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2683.0/lightdash-cli-0.2683.0-macos-arm64.tar.gz"
      sha256 "eff4c5b29fb5bd77865ea9a622374fe469b89da438be1586179bf0328c7f35be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2683.0/lightdash-cli-0.2683.0-macos-x64.tar.gz"
      sha256 "9ae989cb5267e9b9c8ec66a54adba084e4fe1742842f407daa81fff45b079ad9"
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
