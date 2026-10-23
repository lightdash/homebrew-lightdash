class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.48.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.48.2/lightdash-cli-3.48.2-macos-arm64.tar.gz"
      sha256 "a94d4890ae9ecbb28e0eb0bc47afec1071b55a994be1204c5fbceec82417bfa3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.48.2/lightdash-cli-3.48.2-macos-x64.tar.gz"
      sha256 "f1697ba5f8f0754abbbb157cc2db91feb5ae189e04707a0ff6da4cef58bd2cb7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.48.2/lightdash-cli-3.48.2-linux-x64.tar.gz"
    sha256 "89e8103543ebc60fb14773dba52981007e083ab5298c2e77e27ce311c22e0fd7"

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
