class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.316.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.316.1/lightdash-cli-3.316.1-macos-arm64.tar.gz"
      sha256 "31a772ddec2b44afac0dc7b7c2d40bbcc7a60a2138768c3480d6f94808c3edb5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.316.1/lightdash-cli-3.316.1-macos-x64.tar.gz"
      sha256 "dd3fc0d121bcaa0391611a1c0bd40a9c4f3a138430a3d388e97072a3c80d81ad"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.316.1/lightdash-cli-3.316.1-linux-x64.tar.gz"
    sha256 "f993da04046d6c03b320b5ee6742e8905fea4f46c497f7895a686e0fd2b23caf"

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
