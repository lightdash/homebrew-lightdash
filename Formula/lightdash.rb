class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.366.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.366.0/lightdash-cli-2.366.0-macos-arm64.tar.gz"
      sha256 "2783f9715000548c2ccf5658507c434e5f62eba28bd54f412c6b71a35b086896"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.366.0/lightdash-cli-2.366.0-macos-x64.tar.gz"
      sha256 "9386de9410570eda7b3b8d52a61077f421c29477cf78c8f124f49ae9cec1423d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.366.0/lightdash-cli-2.366.0-linux-x64.tar.gz"
    sha256 "ec3ffeca9521566a63e54ffceb21bef67ac066320484b86f04940e064d64a14d"

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
