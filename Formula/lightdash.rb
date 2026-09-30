class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.389.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.2/lightdash-cli-2.389.2-macos-arm64.tar.gz"
      sha256 "8725934d7cba2f283aaf08d7367cddeffe4b2ba57be8cfdb03f1bd87c609cc66"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.2/lightdash-cli-2.389.2-macos-x64.tar.gz"
      sha256 "0deac136ff489b7ee33a824ccb65dbef07ff4f45d48731602fb541091b25253e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.389.2/lightdash-cli-2.389.2-linux-x64.tar.gz"
    sha256 "6267f23a2782fe36579fd98c45425779b7fed748b20aa44f437b317645754433"

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
