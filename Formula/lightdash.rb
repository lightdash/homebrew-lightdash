class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.305.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.4/lightdash-cli-2.305.4-macos-arm64.tar.gz"
      sha256 "7ec924cfd7a4a8367a513fb9a966193683cc175954b2cc3e4eb8b4a70b2b0784"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.4/lightdash-cli-2.305.4-macos-x64.tar.gz"
      sha256 "d7b093df561e2fc24861a00f70bc0443e6211daeb1e97e7049b53891dbee7272"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.305.4/lightdash-cli-2.305.4-linux-x64.tar.gz"
    sha256 "e831aeb30e3cb0692ff6e2d06748635b99ef69a0168c3c13ead25eadfa52c262"

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
