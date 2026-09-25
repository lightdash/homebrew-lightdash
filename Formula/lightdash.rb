class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.344.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.0/lightdash-cli-2.344.0-macos-arm64.tar.gz"
      sha256 "dc4dd13f44e00d91a296f2ee737699d9be5cf04837074c4e4d1496bc8bb5d3e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.0/lightdash-cli-2.344.0-macos-x64.tar.gz"
      sha256 "4dafeee8d9a995deca1323d31496f663ad57465b5423a5d25688f801785b7929"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.344.0/lightdash-cli-2.344.0-linux-x64.tar.gz"
    sha256 "fe4898e2c910c956cf5a78d081a02121405c2a997333cb99eb55eec0330d157b"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
