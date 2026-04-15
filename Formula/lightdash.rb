class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2761.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2761.2/lightdash-cli-0.2761.2-macos-arm64.tar.gz"
      sha256 "27a0a7d0505860f3eb68e652abf9f077abfa32b08f01aae6d2fa60b16ddfe679"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2761.2/lightdash-cli-0.2761.2-macos-x64.tar.gz"
      sha256 "02b88c10466c1ad417b553e20c1efdb4447d72ebe2684b10dab8bce60c76651c"
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
