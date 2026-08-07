class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.104.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.104.0/lightdash-cli-1.104.0-macos-arm64.tar.gz"
      sha256 "35800f104ddaeb7d82c6b074f8bbc006180e6cd4272a5baeca124c1f8ee36b7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.104.0/lightdash-cli-1.104.0-macos-x64.tar.gz"
      sha256 "f46953aa415d3478147196517d56bf2fafe56c205a5635465e9f8613d270500c"
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
