class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.381.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.381.3/lightdash-cli-3.381.3-macos-arm64.tar.gz"
      sha256 "4cd45c7980f4c2f4fab9d8881038b295fc3805e365baf0074dd76936226399d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.381.3/lightdash-cli-3.381.3-macos-x64.tar.gz"
      sha256 "c7088e1f9d9821edfcf6bd56ee40551225af93d6388702752c27d30c879e5a59"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.381.3/lightdash-cli-3.381.3-linux-x64.tar.gz"
    sha256 "dc3971b95f15a16e60c80ff29fa1f00e5e6dda147c08bef3ad2a9706255bd844"

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
