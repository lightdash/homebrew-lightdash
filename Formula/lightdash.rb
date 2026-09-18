class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.262.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.262.0/lightdash-cli-2.262.0-macos-arm64.tar.gz"
      sha256 "f86e119d719c109312e6f3be66926065fd7be154f22762a94ce1be159e054aae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.262.0/lightdash-cli-2.262.0-macos-x64.tar.gz"
      sha256 "96b855e4f40b1f017ab183c94f79f0206a3fed25ef2d3eab1619955c31f18712"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.262.0/lightdash-cli-2.262.0-linux-x64.tar.gz"
      sha256 "2216e2edcd479bac25af993ac4fa773cdbe161c408c5b9843f3292e2b664358c"
    end
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
