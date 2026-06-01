class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3063.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3063.0/lightdash-cli-0.3063.0-macos-arm64.tar.gz"
      sha256 "be9929a5620eebda8e97169fcd63dd36b0199ec813fb35b902c60852cc8baeae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3063.0/lightdash-cli-0.3063.0-macos-x64.tar.gz"
      sha256 "0eda3cfdc960eca617596d97ff21ee95b8477c2cf5e6f38285f299ce09fdf1e2"
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
