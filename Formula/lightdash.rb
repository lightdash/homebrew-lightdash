class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2772.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.1/lightdash-cli-0.2772.1-macos-arm64.tar.gz"
      sha256 "ffed92f1adfa16f28e81d4e53469d1e0dc738087ce1edda258c9af9912259ba4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.1/lightdash-cli-0.2772.1-macos-x64.tar.gz"
      sha256 "f96f0f5ed37e96b05a3994b41b13a48615c8872ddd4c88e2fde58a6a50d78e37"
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
