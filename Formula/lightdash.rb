class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.423.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.423.1/lightdash-cli-3.423.1-macos-arm64.tar.gz"
      sha256 "6c998d23dbbb12ae3b84047606549ecd22ac4ae29dfc9795e999f4a1197808d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.423.1/lightdash-cli-3.423.1-macos-x64.tar.gz"
      sha256 "e0adce3c09d671427c7254366fa311a9ea28f9d3430e7f59b4b85e6b37620733"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.423.1/lightdash-cli-3.423.1-linux-x64.tar.gz"
    sha256 "aff2d02700c83150407c48e8f57df2d5a2268a8372c3274202a4943def9221e3"

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
