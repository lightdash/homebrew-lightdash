class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.113.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.113.0/lightdash-cli-3.113.0-macos-arm64.tar.gz"
      sha256 "3035c0fec4c538302b48d631f568d4dbe7b223f42f64299ded5212a93efb8b0f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.113.0/lightdash-cli-3.113.0-macos-x64.tar.gz"
      sha256 "890fdba1bcdd7fa137f848df6a299bfbff2159e702fa46c724e13f2c7d974f9c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.113.0/lightdash-cli-3.113.0-linux-x64.tar.gz"
    sha256 "08a97214769e616353c0f3eb8adca9a5a1ee08d5e2c7141954207e76aa15cff5"

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
