class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.20.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.20.2/lightdash-cli-3.20.2-macos-arm64.tar.gz"
      sha256 "76308211e058b97c8052416b671b429c20ac43433d440276196e197e289fad15"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.20.2/lightdash-cli-3.20.2-macos-x64.tar.gz"
      sha256 "f5cff57ce6c8b113b0c7b828ab954730221a4b7dd8513a0b0a0ef7009a814224"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.20.2/lightdash-cli-3.20.2-linux-x64.tar.gz"
    sha256 "9662e5f131f23cd1a3c7f362908e21ed07813681cf8addcb9425844769ea410a"

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
