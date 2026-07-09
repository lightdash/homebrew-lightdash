class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3341.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3341.0/lightdash-cli-0.3341.0-macos-arm64.tar.gz"
      sha256 "06800b5a324fb4305a8fc3bda072eda1b05130bb8e057d82af37a3c5e65ac404"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3341.0/lightdash-cli-0.3341.0-macos-x64.tar.gz"
      sha256 "7c6313079b294bfb316c4c4e9d1f7018d712cf683353961acb79f878ef515399"
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
