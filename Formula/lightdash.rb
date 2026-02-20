class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2499.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2499.0/lightdash-cli-0.2499.0-macos-arm64.tar.gz"
      sha256 "13c997912c961e72268bd873bb03539167bbe0935020a294f77c4378a365919f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2499.0/lightdash-cli-0.2499.0-macos-x64.tar.gz"
      sha256 "30b160dba6d3ce2677aeac8b10344edae18b263e0ca32ff694022b13c40ebd12"
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
