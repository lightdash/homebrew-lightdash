class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.242.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.4/lightdash-cli-2.242.4-macos-arm64.tar.gz"
      sha256 "c6d180266c10bca74e187e8d731a139a0bf3b432c27c34e22d7060226ed56bbb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.4/lightdash-cli-2.242.4-macos-x64.tar.gz"
      sha256 "fba0d7be9dfb9f2e20b71097a99a06092a60d6858a335b67378af8e94f589926"
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
