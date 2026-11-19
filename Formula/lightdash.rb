class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.347.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.347.0/lightdash-cli-3.347.0-macos-arm64.tar.gz"
      sha256 "1e5e0cc78c18a17eb5ec2b4ad0b783d469ba894ac89b4be942b5972f0206e274"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.347.0/lightdash-cli-3.347.0-macos-x64.tar.gz"
      sha256 "4839b8530f9a7828f348369ca7d7c3f1bc0fb20ec540b90bd09694ce88cc1ecf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.347.0/lightdash-cli-3.347.0-linux-x64.tar.gz"
    sha256 "1e759de83cd9be07c609294f7520ab6cc60c0f8393fc9da6c7980762a670187b"

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
