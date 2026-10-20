class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.631.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.5/lightdash-cli-2.631.5-macos-arm64.tar.gz"
      sha256 "34807591ebe6eeea275aa94b8ebbb7411bcc043397bac31caada73fb2597b892"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.5/lightdash-cli-2.631.5-macos-x64.tar.gz"
      sha256 "dea1acc6ef4ac53a1381dfbcf71cac9bace44e8de29355fa0de8068ce1bad744"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.631.5/lightdash-cli-2.631.5-linux-x64.tar.gz"
    sha256 "c31984fb212c83b16543452967a240c87da4962151f89b1afb89962053d335de"

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
