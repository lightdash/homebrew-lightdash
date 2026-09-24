class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.330.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.330.0/lightdash-cli-2.330.0-macos-arm64.tar.gz"
      sha256 "26dc47daedae97257a90bb97eab78ae5de1a6a65477d142c97658791730fb12b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.330.0/lightdash-cli-2.330.0-macos-x64.tar.gz"
      sha256 "6f8dc980db51c88acc283a12c6328859760e8635453af4acc3789d605db3384d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.330.0/lightdash-cli-2.330.0-linux-x64.tar.gz"
    sha256 "879e096d70756a2e20b817e867de443fd5df3cc62bf68dd6ffc7e17993b9c752"

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
